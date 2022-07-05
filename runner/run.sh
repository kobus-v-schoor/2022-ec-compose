#! /bin/bash

cd runner && dotnet GameRunner.dll &
cd engine && sleep 1 && dotnet Engine.dll &
cd logger && sleep 1 && dotnet Logger.dll &

wait
