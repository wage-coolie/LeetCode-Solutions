def num_tilings(n)
    if n == 1 then return 1 end
    mod = (10**9)+7
    dp = [0,1,2,5]
    for i in 4..n
        dp[i] = 2 * dp[i-1] + dp[i-3]
        dp[i] = dp[i]%mod
    end
    dp[n].round

    end

n = 3

pp num_tilings(30)




=begin
class Solution {
    public int numTilings(int n) {
        int dp[] = new int[n+4];
        
        int mod = (int)(Math.pow(10,9)+7);
        dp[1] = 1;
        dp[2] = 2;
        dp[3] = 5;
        
        for(int i=4;i<=n;i++){
            dp[i] = ((2*dp[i-1])%mod)+dp[i-3];
            dp[i] %= mod;
        }
        
        return dp[n];
    }
}    


=end