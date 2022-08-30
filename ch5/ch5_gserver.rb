require 'gserver'

class LogServer < GServer
    def initialize
        super(12345)
    end

    def serve(client)
        client.puts get_end_of_log_file
    end

    private

    def get_end_of_log_file
        File.open("/var/log/system.log") do |log|
            log.seek(-1000, IO::SEEK_FIND)  # back upp 1000 chars from end
            log.gets                        # ignore partial lines 
            log.read                        # and return rest
        end
    end
end

server = LogServer.new
server.start.join