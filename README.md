# Loyalty-backend

API layer for co-op by pub/sub model for blockchain technologies

## Design

You can find the diagram of an architecture at [here](./design/architecture.drawio) for [Draw.io](https://www.draw.io) service

### Services

- Client - Phoenix API for brands and end-users
- Consumer - Elixir tests
- Producer - Broadway pipeline to react to events

### Containers map

![Docker](https://github.com/Zimtir/Loyalty-backend/blob/master/design/docker.jpg?raw=true)

### Database map

![Database](https://github.com/Zimtir/Loyalty-backend/blob/master/design/database.jpg?raw=true)

### Architecture map

![Architecture](https://github.com/Zimtir/Loyalty-backend/blob/master/design/architecture.jpg?raw=true)

### Stack

- [Elixir](https://elixir-lang.org), [Phoenix](https://www.phoenixframework.org), [Broadway](https://github.com/dashbitco/broadway)
- [Docker](https://www.docker.com), [Docker Compose](https://docs.docker.com/compose)
- [RabbitMQ](https://www.rabbitmq.com)
- [Draw.io](https://www.draw.io)
