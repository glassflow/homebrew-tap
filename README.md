# GlassFlow Homebrew Tap

This repository contains the Homebrew formula for the [GlassFlow CLI](https://github.com/glassflow/cli).

## Installation

Install the GlassFlow CLI using Homebrew:

```bash
brew tap glassflow/tap
brew install glassflow
```

## What is GlassFlow CLI?

The GlassFlow CLI provides a local development environment for exploring and testing [GlassFlow ETL](https://github.com/glassflow/clickhouse-etl) - an open-source tool for real-time data processing from Kafka to ClickHouse.

The CLI sets up:
- Local Kubernetes cluster (Kind)
- Kafka message broker
- ClickHouse database
- GlassFlow ETL service
- Demo pipeline with sample data

> **Note**: This CLI is designed for **local testing, demos, and exploration only**. For production deployments, use the [official GlassFlow Helm charts](https://github.com/glassflow/charts).

## Requirements

- **Docker** (or compatible runtime like Docker Desktop, OrbStack, Colima, or Podman)
- **kubectl** (installed automatically as a dependency)

## Usage

After installation, start the local development environment:

```bash
glassflow up --demo
```

Access the services:
- **GlassFlow UI**: http://localhost:30080
- **GlassFlow API**: http://localhost:30180
- **ClickHouse HTTP**: http://localhost:30090

Stop the environment:

```bash
glassflow down
```

## Resources

- **GlassFlow CLI**: [github.com/glassflow/cli](https://github.com/glassflow/cli)
- **GlassFlow ETL**: [github.com/glassflow/clickhouse-etl](https://github.com/glassflow/clickhouse-etl)
- **Documentation**: [docs.glassflow.dev](https://docs.glassflow.dev)
- **Helm Charts**: [github.com/glassflow/charts](https://github.com/glassflow/charts)
- **Slack Community**: [Join GlassFlow Hub](https://glassflowhub.slack.com/join/shared_invite/zt-349m7lenp-IFeKSGfQwpJfIiQ7oyFFKg#/shared-invite/email)

## Formula Updates

This formula is manually updated after each release. The formula file is located at `Formula/glassflow.rb`.

For automated updates, see the [GlassFlow CLI repository](https://github.com/glassflow/cli) release workflow.

