require_relative('../db/sql_runner')

class Album

  attr_reader(:id)
  attr_accessor(:title, :genre, :stock_quantity, :selling_price, :year, :buying_cost, :artist_id, :label_id)

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @title = options['title']
    @genre = options['genre']
    @stock_quantity = options['stock_quantity'].to_i
    @buying_cost = options['buying_cost'].to_f
    @selling_price = options['selling_price'].to_f
    @year = options['year']
    @artist_id = options['artist_id'].to_i
    @label_id = options['label_id'].to_i
  end

  def save()
    sql = "INSERT INTO albums
    ( title,
      genre,
      stock_quantity,
      buying_cost,
      selling_price,
      year,
      artist_id,
      label_id
    ) VALUES (
      $1, $2, $3, $4, $5, $6, $7, $8
    ) RETURNING id;"
    values = [@title, @genre, @stock_quantity, @buying_cost, @selling_price, @year, @artist_id, @label_id]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM albums ORDER BY stock_quantity ASC;"
    results = SqlRunner.run(sql)
    return results.map {|album| Album.new(album)}
  end

  def update()
    sql = "UPDATE albums SET
    (title,
     genre,
     stock_quantity,
     buying_cost,
     selling_price,
     year,
     artist_id,
     label_id) =
     ($1, $2, $3, $4, $5, $6, $7, $8)
     WHERE id = $9"
     values = [@title, @genre, @stock_quantity, @buying_cost, @selling_price, @year, @artist_id, @label_id, @id]
     SqlRunner.run(sql, values)
  end

  def update_stock()
    sql = "UPDATE albums SET stock_quantity = $1 WHERE id = $2"
     values = [@stock_quantity, @id]
     SqlRunner.run(sql, values)
  end

  def self.delete_all()
    sql = "DELETE from albums;"
    SqlRunner.run(sql)
  end

  def self.find( id )
    sql = "SELECT * FROM albums
    WHERE id = $1"
    values = [id]
    results = SqlRunner.run( sql, values )
    return Album.new( results.first )
  end

  def artist()
    sql = "SELECT * FROM artists
    WHERE id = $1"
    values = [@artist_id]
    results = SqlRunner.run( sql, values )
    return Artist.new( results.first )
  end

  def label()
    sql = "SELECT * FROM labels
    WHERE id = $1"
    values = [@label_id]
    results = SqlRunner.run( sql, values )
    return Label.new( results.first )
  end


end
