# def run(cmd)
#   puts cmd
#   system cmd
# end
# require 'simplecov'


def spec(file)
  run "spec -O spec/spec.opts #{file}"
end

watch("test/.*/*_test\.rb") do |match|
  p match[0]
  test_all
end

def test_all
  run "zeus test test"
end

@cuc_cmd  = "zeus cucumber --require features"
@test_all_cmd  = "zeus test test"

def run(command)
   puts "\n\n"
   puts command
   system command
   puts "\n\n"
   @interrupted = false
 end
  
def run_all_features
  result = run @cuc_cmd
end

def run_all_test_units
  result = run @test_all_cmd
end

def run_feature(feature)
  result = run "#{@cuc_cmd} #{feature}"
end

def run_suite
  run_all_test_units
  # run_simplecov
  # run_all_features
end

# def run_simplecov
#   SimpleCov.start 'rails'
# end

def related_test_files(path)
  Dir['test/**/*.rb'].select { |file| file =~ /#{File.basename(path).split(".").first}_test.rb/ }
end

def run_test_file(file)
  # result = run(%Q(bundle exec ruby -I"lib:test" -rubygems #{file}))

  result = run(%Q(zeus test #{file}))
  # puts result
end

# Rules #####################################################################
watch('watchr.rb') { |m| run_all_test_units }
# watch('features/support/.*') { |m| run_all_features }
# watch('features/.*\.feature') { |m| run_feature m[0] }
# watch('features/*/.*\.feature') { |m| run_feature m[0] }
# watch('features/support/.*') { |m| run_all_features }
# watch('features/step_definitions/.*\.rb') { |m| run_all_features }
# watch('app/views/*') { |m| run_all_features }

watch('test/test_helper\.rb') { run_all_test_units }
watch('test/.*/.*_test\.rb') { |m| run_test_file(m[0]) }
watch('test/.*/.*/.*_test\.rb') { |m| run_test_file(m[0]) }
watch('test/.*/.*/.*/.*/.*_test\.rb') { |m| run_test_file(m[0]) }
watch('test/.*/.*/.*/.*_test\.rb') { |m| run_test_file(m[0]) }
watch('app/.*/.*\.rb') { |m| related_test_files(m[0]).map {|tf| run_test_file(tf) } }

# Signals ####################################################################
@interrupted = false

Signal.trap 'INT' do # CTRL-C
  if @interrupted
    abort "\n"
  else
    puts 'Interrupt a second time to quit'
    puts " --- Running entire test suite ---\n\n"
    @interrupted = true
    sleep 1.5
    run_suite
  end
end

Signal.trap 'EXIT' do
  abort "\n"  
end


