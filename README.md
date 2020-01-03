This is a minimal Fable + React + Paket + Fake setup for using React with Fable.

Its based on the official Fable "minimal" sample and the Fulma demo:

https://github.com/MangelMaxime/fulma-demo

I've tested this on a Mac with Node 12.5.

You may need to ensure paket is installed before building this:

dotnet tool restore

To build it you can just hit F5 in Code or run:

./fake.sh build
