function scr_coin_add(amount) {
    /// @func scr_coin_add(amount)
    /// @desc Adds coins and clamps to non-negative

    global.coins = max(0, global.coins + amount);
}
