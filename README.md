<h1 align="center">
  <br>


     _______  _______ _________
    (  ___  )(  ____ )\__   __/
    | (   ) || (    )|   ) (   
    | (___) || (____)|   | |   
    |  ___  ||  _____)   | |   
    | (   ) || (         | |   
    | )   ( || )      ___) (___
    |/     \||/       \_______/


                           
  <br>
  OpenAi FiveM Assistant
  <br>
</h1>

<h4 align="center">A lua rest api for FiveM
.</h4>


<p align="center">
  <a href="#key-features">Key Features</a> •
  <a href="#how-to-use">How To Use</a> •
  <a href="#credits">Credits</a> •
  <a href="#docs">Docs</a> •
  <a href="#license">License</a>
</p>

![63aaf2cee4ecef17661a7974_OpenAI](https://user-images.githubusercontent.com/113531412/219901691-6eac92d2-457e-40d7-94c9-9886069ba4f3.jpg)


## Key Features

The OpenAI API can be applied to virtually any task that involves understanding or generating natural language or code.

* Use all models of OpenAi
  - You need to create an accout on OpenAi and get an API key.
* Get response and print in char or console
* Code adaptable to every need
  - Content generation
  - Summarization
  - Classification, categorization, and sentiment analysis
  - Data extraction
  - Translation
  - Many more!
* Integrated with swiftUI

| Method               |   Target   | Description |
| ---------------------| -----------|-------------|
| text-generation      | prompt     | Generates text based on a given prompt |
| sentiment-analysis   | text       | Determines the sentiment of a given text |
| question-answering   | question   | Provides an answer to a given question based on a given context |
|                      | context    |             |
| summarization        | text       | Generates a short summary of a given text |
| translation          | text       | Translates text from one language to another |
|                      | target     |             |
| language-detection   | text       | Detects the language of a given text |
| text-classification  | text       | Classifies a given text into one or more predefined categories |
|                      | categories |             |
| named-entity-recog.  | text       | Identifies named entities in a given text |
| text-to-speech       | text       | Converts text into spoken audio |
| image-recognition    | image      | Identifies objects and scenes in an image |
| text-to-image        | prompt     | Generates an image based on a given prompt |
| semantic-search      | query      | Finds documents related to a given query |
|                      | documents  |             |
| chatbot              | message    | Generates responses to a given message |


## How To Use

Copy the folder inside the resouce folder of your server, start the script inside server.cfg. To get the Api key go to your account on https://beta.openai.com/account/api-keys and copy the key.

In this example i've used Davinci gpt 3.5 Turbo model, you can change the model and use what you need.

Change the value with your OpenAi Api key

```lua
-- API endpoint URL
local url = "https://api.openai.com/v1/chat/completions"

-- API key for authentication
local api_key = "YOUR API KEY"
```
Use /chatgpt "custom prompt" inside fivem

You can change the command inside the server.lua

```lua
RegisterCommand("chatgpt", function(_src, arg)

```
Please read the official OpenAi API Documentation: https://beta.openai.com/docs if you need more info !

To get response text, you can use:

```lua
  if statusCode == 200 then
    -- Process the response data
    local decoded_response = json.decode(response)
    local completion = decoded_response.choices[1].message.content
    print("Completion:", completion)
    TriggerClientEvent('chat:addMessage', _src, {color = {255, 0, 0}, args = {"open_ai","" ..completion.. ""}})
```

> **Note**

> You can found more information on: https://platform.openai.com/docs/api-reference/completions/create

## Docs

<a href="https://ruxo.gitbook.io/ruxo-shop/free-scripts/openai-fivem-assistant">Ruxo Docs</a> 

## Credits

Russo Giovanni M.

OpenAI

## License

MIT

IT'S MANDATORY TO GIVE CREDDITS IF YOU REUSE THE CODE!
DO NOT CHANGE CREDITS INSIDE THE CODE.

You need to add credis like:
"Copyright Ruxo, https://github.com/turangarusso/"
Thank you
---

