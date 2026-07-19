# awesome-agent-skills

A curated collection of practical, plug-and-play skills for AI agents (Claude, Claude Code, and more).

## What's a skill?

A skill is a folder with a `SKILL.md` file — a short description plus instructions that teach an agent how to do one task well.

```markdown
---
name: my-skill
description: Use this when ...
---

Instructions the agent follows.
```

## Skills

| Skill | Description |
|-------|-------------|
| [writing-style](skills/writing-style/) | Personal writing style guide — load when writing articles or polishing content to keep tone consistent. |

## Usage

For Claude Code, copy a skill into your skills directory:

```bash
cp -r skills/<skill-name> ~/.claude/skills/
```

## Contributing

Add a folder under `skills/<skill-name>/` with a `SKILL.md`, list it above, and open a PR.
