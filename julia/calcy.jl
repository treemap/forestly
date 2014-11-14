using Morsel
using DBI
using PostgreSQL

module Inventory
    treeDiameters

    function treeDiameter()
        conn = connect(Postgres, "localhost", "username", "password", "dbname", 5432)

        stmt = prepare(conn, "SELECT 1::bigint, 2.0::double precision, 'foo'::character varying, " *
                             "'foo'::character(10);")
        result = execute(stmt)
        for row in result
            # code
        end

        finish(stmt)

        disconnect(conn)
    end
end

app = Morsel.app()

route(app, GET | POST | PUT, "/") do req, res
    "This is the root"
end

get(app, "/about") do req, res
    "This app is running on Morsel"
end

start(app, 8000)
