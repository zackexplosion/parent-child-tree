
# for ruby
guard :rspec, cmd: 'rspec --color --format doc ruby/*.rb' do
  watch(%r|.+\.rb|) { "spec" }
end

# for js
module ::Guard
  class Jscli < Plugin
    def run_on_modifications(paths)
      puts nil # 為了讓輸出好看一點XD
      puts `node_modules/mocha/bin/mocha javascript/parent-child_spec.js`
    end
  end
end

guard 'Jscli' do
  watch(%r{\.js})
end