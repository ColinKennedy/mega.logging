--- Make sure basic logging behavior works as expected.

local logging = require("mega.logging")


describe("Initialzation", function()
    it("creates a logger by-name", function()
        logger = logging.get_logger("some.logger.name")
        logger:debug("I am a test")
    end)
end)
