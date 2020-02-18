#!/bin/sh

echo ''
echo -e '============================================'
echo -e '==== [ Welcome to Bungecord installer ] ===='
echo -e '============================================'
echo ''

echo -e '-------> Task: downloading bungeecord from source <-------'
echo ''
wget https://ci.md-5.net/job/BungeeCord/lastSuccessfulBuild/artifact/bootstrap/target/BungeeCord.jar
echo '--> TASK FINISHED <--'
echo ''

echo -e '-------> Creating runner <-------'
echo ''
echo -e '#!/bin/sh\njava -Xms128M -Xmx1024M -jar BungeeCord.jar' >> runner.sh
chmod +x runner.sh
echo -e '--> TASK FINISHED <--'
echo ''

echo '-------> Task: running BungeCord <-------'
echo ''
java -Xms128M -Xmx1024M -jar BungeeCord.jar
echo '--> TASK FINISHED <--'
echo ''