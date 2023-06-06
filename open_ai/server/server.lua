GPT = {}
-- don't touch, made by Ruxo for Evolve RP

RegisterCommand("chatgpt", function(_src, arg)

-- API endpoint URL
local url = "https://api.openai.com/v1/chat/completions"

-- API key for authentication
local api_key = "YOUR API KEY"

-- Request data
local data = {
  model = "gpt-3.5-turbo",
  messages = {
    {
      role = "user",
      content = tostring(arg[1]),
    },
    {
      role = "system",
      content = "You are a personal assistant for a FiveM server called Evolve",
    }
  }
}

-- Convert data to JSON
local request_data = json.encode(data)

-- Set request headers
local headers = {
  ["Content-Type"] = "application/json",
  ["Authorization"] = "Bearer " .. api_key
}

-- Perform the POST request
PerformHttpRequest(url, function(statusCode, response)
  if statusCode == 200 then
    -- Process the response data
    local decoded_response = json.decode(response)
    local completion = decoded_response.choices[1].message.content
    --print("Response: " ..response)
    print("Completion:", completion)
    TriggerClientEvent('chat:addMessage', _src, {color = {255, 0, 0}, args = {"open_ai","" ..completion.. ""}})
  else
    print("Error:", statusCode)
  end
end, "POST", request_data, headers)

end)


