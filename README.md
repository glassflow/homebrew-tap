# GlassFlow Homebrew Tap

This repository contains the Homebrew formula for the [GlassFlow CLI](https://github.com/glassflow/cli).

## Quick Start

### Prerequisites

- **Docker** (or compatible runtime like Docker Desktop, OrbStack, Colima, or Podman)
- **Helm** (v3) - installed automatically as a Homebrew dependency, or install manually ([install Helm](https://helm.sh/docs/intro/install/))
- **kubectl** - installed automatically as a Homebrew dependency, or install manually

Give Docker enough resources (for example, 6-8 GB RAM and 4 CPUs) so all pods can schedule.

### Installation

Install via Homebrew:

```bash
brew tap glassflow/tap
brew install glassflow
```

### Usage

Recommended flow:

1. Install cluster and services:

```bash
glassflow up
```

2. Set up demo pipeline and port-forwarding:

```bash
glassflow setup-demo
```

All-in-one flow:

```bash
glassflow up --demo
```

Once running, access (ports may vary if alternatives were chosen):
- **GlassFlow UI**: http://localhost:30080
- **GlassFlow API**: http://localhost:30180
- **ClickHouse HTTP**: http://localhost:30090

Stop and clean up:

```bash
glassflow down
```

## Commands

```bash
glassflow up
glassflow setup-demo
glassflow up --demo
glassflow down
glassflow version
glassflow --help
```

## What is GlassFlow CLI?

The GlassFlow CLI provides a local development environment for exploring and testing [GlassFlow ETL](https://github.com/glassflow/clickhouse-etl) - an open-source tool for real-time data processing from Kafka to ClickHouse.

> **Note**: This CLI is designed for **local testing, demos, and exploration only**. For production deployments, use the [official GlassFlow Helm charts](https://github.com/glassflow/charts).

## Resources

- **GlassFlow CLI**: [github.com/glassflow/cli](https://github.com/glassflow/cli)
- **GlassFlow ETL**: [github.com/glassflow/clickhouse-etl](https://github.com/glassflow/clickhouse-etl)
- **Documentation**: [docs.glassflow.dev](https://docs.glassflow.dev)
- **Helm Charts**: [github.com/glassflow/charts](https://github.com/glassflow/charts)
- **Slack Community**: [Join GlassFlow Hub](https://glassflowhub.slack.com/join/shared_invite/zt-349m7lenp-IFeKSGfQwpJfIiQ7oyFFKg#/shared-invite/email)

## Formula Updates

This formula is manually updated after each release. The formula file is located at `Formula/glassflow.rb`.

For automated updates, see the [GlassFlow CLI repository](https://github.com/glassflow/cli) release workflow.
