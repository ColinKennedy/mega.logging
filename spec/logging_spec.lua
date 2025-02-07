--- Make sure basic logging behavior works as expected.

local logging = require("mega.logging")


describe("Initialzation", function()
    it("creates a logger by-name", function()
        logger = logging.get_logger("some.logger.name")
        logger:debug("I am a test")
    end)

    it("logs every level", function()
        logger = logging.get_logger("some.logger.another_name")
        logger:trace("I am a test")
        logger:debug("I am a test")
        logger:warning("I am a test")
        logger:info("I am a test")
        logger:error("I am a test")
        logger:fatal("I am a test")

        logger:fmt_trace("I am a test '%s' message", "blah blah")
        logger:fmt_debug("I am a test '%s' message", "blah blah")
        logger:fmt_warning("I am a test '%s' message", "blah blah")
        logger:fmt_info("I am a test '%s' message", "blah blah")
        logger:fmt_error("I am a test '%s' message", "blah blah")
        logger:fmt_fatal("I am a test '%s' message", "blah blah")
    end)
end)
