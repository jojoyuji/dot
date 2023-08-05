git clone https://github.com/microsoft/vscode-node-debug2.git ./adapters/vscode-node-debug2
cd adapters/vscode-node-debug2
npm install
NODE_OPTIONS=--no-experimental-fetch npm run build
