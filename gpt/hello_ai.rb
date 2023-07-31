require "openai"

client = OpenAI::Client.new(access_token: "【あなたのAPI Key】")

response = client.chat(
    parameters: {
        model: "gpt-3.5-turbo",
        messages: [{ role: "user", content: "Hello!" }],
    })
puts response.dig("choices", 0, "message", "content")