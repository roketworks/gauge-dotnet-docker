# gauge-dotnet-docker

Docker image that provides gauge cli with dotnet core plugin

## Usage 

### Dockerfile
```
FROM mikemcfarland/gauge-dotnet
COPY . .
CMD ["gauge", "run", "specs"]
```

### Command Line

To use the image from your gauge project directory

#### Linux
`docker run --rm -v $(pwd):/workspace -w /workspace mikemcfarland/gauge-dotnet gauge run specs`

You can map this image to `gauge` to simplify the command
```
echo 'function octo(){ sudo docker run --rm -v $(pwd):/workspace -w /workspace mikemcfarland/gauge-dotnet "$@" ;}' >> ~/.bashrc
source ~/.bashrc
gauge run specs
```

#### Windows
`docker run --rm -v ${PWD}:/workspace -w /workspace mikemcfarland/gauge-dotnet gauge run specs`

### Selenium 
This image does not contain chromium, but it will work with selenium grid. 
