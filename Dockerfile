FROM mcr.microsoft.com/dotnet/core/sdk:2.2

RUN apt-get update && apt-get install -q -y unzip
RUN curl -SsL https://downloads.gauge.org/stable | sh

RUN gauge install dotnet && \
  gauge install html-report && \
  gauge install screenshot

ENV PATH=$HOME/.gauge:$PATH
