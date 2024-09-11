# Chat Application API

## Overview

This project is a chat application API built with Ruby on Rails. It provides endpoints for managing applications, chats, and messages. The API supports creating and retrieving applications, creating and managing chats within an application, and sending and updating messages within a chat. Additionally, it offers functionality for searching messages.

## Table of Contents

1. [Installation](#installation)
2. [Endpoints](#endpoints)

## Installation

1. **Clone the repository:**

   ```bash
   git clone https://github.com/yourusername/chat-application-api.git
   cd chat-application-api

2. **Install dependencies:**

   Ensure you have Docker installed and running.

   ```bash
   docker-compose build
   docker-compose up
3. **Run database migrations:**

   The application will automatically run migrations when starting up. If you need to run migrations manually, you can use the following command:

   ```bash
   docker-compose run web rails db:migrate

4. **Seed the database (optional):**

   If you have seed data, you can load it with:

   ```bash
   docker-compose run web rails db:seed

## Endpoints

You can find detailed Postman collections for testing these endpoints [here](https://drive.google.com/file/d/1qkCTRp7GMhJ31kwUO1QgwGDoH_2fizTw/view?usp=sharing).

To use the Postman collections:

1. **Import the collection** into Postman:
  - Click on "Import" 
  - Select the files downloaded from link above after extracting the 3 collections
2. **Run the requests** in the following order:
   - Create an Application
   - Get All Applications
   - Get a Specific Application
   - Create a Chat (use a valid application token)
   - Get Chats for Application
   - Get a Specific Chat

   - Create a Message (use valid application token and chat number)
   - Get Messages for Chat
   - Get a Specific Message
   - Update a Specific Message
   - Search Messages

   Don't forget to substitute the placeholders in the parameters with the real tokens and chat/message numbers!
