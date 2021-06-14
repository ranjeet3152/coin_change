def coins_change(coins, amount)
  return 0 if amount == 0

  dp = Array.new(amount + 1, Float::INFINITY)
  dp[0] = 0

  coins.each do |coin|
    1.upto(amount).each do |i|
      next if i < coin
      dp[i] = [dp[i], dp[i - coin] + 1].min
    end
  end
  dp[amount] == Float::INFINITY ? -1 : dp[amount]
end
