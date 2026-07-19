---
name: roll-dice
description: Roll dice using a random number generator. Use when asked to roll a die (d6, d20, etc.), roll dice, or generate a random dice roll.
---

To roll dice, run the provided script `scripts/roll.sh`:

```bash
scripts/roll.sh [sides] [count]
```

- `sides` — number of sides on each die (default: 6)
- `count` — number of dice to roll (default: 1)

Examples:

```bash
scripts/roll.sh        # roll one d6
scripts/roll.sh 20     # roll one d20
scripts/roll.sh 6 3    # roll three d6 and show the total
```

If you cannot run the script, generate a random number from 1 to the number of sides directly:

```bash
echo $((RANDOM % <sides> + 1))
```

```powershell
Get-Random -Minimum 1 -Maximum (<sides> + 1)
```

Replace `<sides>` with the number of sides on the die (e.g., 6 for a standard die, 20 for a d20).
