# EventGen

Create a swift Event struct with static values from a csv file. 

## Usage 
To manage the distribution of the executable I used a tool called [mint](https://github.com/yonaskolb/Mint)

Install mint to homebrew

```sh
brew install mint

```

Run the EventGen executable where the input is the csv file to be parsed and the output is the swift file to be generated

```sh
mint run kieranb662/EventGen@0.0.2 --input "../test.csv" --output "../Event.swift"
```
