create database EVENTS;
create user event_router@`%` identified by 'lurker';
grant all on EVENTS.* to `event_router`@`%`;
