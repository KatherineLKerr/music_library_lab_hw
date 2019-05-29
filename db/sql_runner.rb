require("pg")

class SqlRunner

  def self.run(sql, values = []) #default parameters (values = []) always go last..b/c of some ordering issue...
    begin
      db = PG.connect({dbname: "music_app", host: "localhost"})
      db.prepare("query", sql)
      result = db.exec_prepared("query", values)
    ensure
      db.close() if db != nil
    end
    return result
  end

end
