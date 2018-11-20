function checkWork() {
    if (eth.getBlock("pending").transactions.length > 4) {
        if (eth.mining) return;
        console.log("Pending transactions! Mining...");
        miner.start(1);
    } else {
        miner.stop();
        console.log("No pending transactions! Mining stopped.");
    }
}

eth.filter("latest", function(err, block) { checkWork(); });
eth.filter("pending", function(err, block) { checkWork(); });

checkWork();
