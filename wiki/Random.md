# Random Number Generators

## How it works
The current implementation selects a random number by repeatedly taking the top or bottom half of the provided range at random, until a single number is left. At the core, it's the `powerpack:random` predicate that checks which half to pick. Only when there are 3 numbers left to pick from, a random entity selector is used.

This method is not truely random, because of shortcomings in the internal Minecraft algorithms and that each member in a final range of 3 has a lower chance than a member that's in a final range of 2.

## Alternative Solutions
Solution|Disadvantages
-|-
Random entity target selector | Obviously this gets laggy quickly if you want a random number between 0 and 1000, resulting in 1000 entities. This is less of an issue with markers, but still not good enough.
Clock based | In this method a number is simply incremented on the scoreboard every tick.Although this might seem random if the number is retrieved at irregular intervals, the illusion falls apart if it's retrieved every tick or multiple times a tick.
Linear Congruential Generator | This formula would be easy to implement, but that also means that there are decent chances that Minecrafts internals use something more sophisticated. That's why the current solution uses Minecraft randomness at its core.
Loot tables and result number of `/loot` | Storing the result output of the `/loot` command after creating the resulting number of item entities is too laggy.
Loot tables and random value in NBT | Even only spawning a single item with the random value in its NBT is still laggier than the current solution.