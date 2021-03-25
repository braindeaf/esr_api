RSpec.configure do |config|
  config.around(:example, type: :job) do |example|
    # Clear downloads_directory before tests.
    empty_directory(File.join(FtpCredential::LOCAL_DOWNLOADS_DIRECTORY, Rails.env))
    example.run
    empty_directory(File.join(FtpCredential::LOCAL_DOWNLOADS_DIRECTORY, Rails.env))
  end
end

def empty_directory(directory)
  return unless Dir.exist?(directory)

  Dir.children(directory).each do |dir|
    Dir.children(File.join(directory, dir)).each do |file|
      File.delete(File.join(directory, dir, file))
    end
    Dir.delete(File.join(directory, dir))
  end
end
