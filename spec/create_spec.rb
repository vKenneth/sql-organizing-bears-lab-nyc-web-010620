describe 'creating bears table' do
  before do
    @db = SQLite3::Database.new(':memory:')
    @sql_runner = SQLRunner.new(@db)
    @sql_runner.execute_create_file
  end

  it "creates a bears table with a name field" do
    expect{@db.execute("SELECT name FROM bears;")}.to_not raise_exception
  end

  it "creates a bears table with a age field" do
    expect{@db.execute("SELECT age FROM bears;")}.to_not raise_exception
  end

  it "creates a bears table with a gender field" do
    expect{@db.execute("SELECT gender FROM bears;")}.to_not raise_exception
  end

  it "creates a bears table with a color field" do
    expect{@db.execute("SELECT color FROM bears;")}.to_not raise_exception
  end

  it "creates a bears table with a temperament field" do
    expect{@db.execute("SELECT temperament FROM bears;")}.to_not raise_exception
  end

  it "creates a bears table with an alive field" do
    expect{@db.execute("SELECT alive FROM bears;")}.to_not raise_exception
  end

  it "creates a bears table with an id as a primary key" do
    expect(@db.execute("PRAGMA table_info(bears);").detect { |arr| arr[-1] == 1 && arr[2] == "INTEGER" }.length).to eq(6)
  end
end


CREATE TABLE bears (
//columns here
id INTEGER PRIMARY KEY,
name BEAR,
age 777
gender MALE,
color PINK
temperament GOOD
alive TRUE);

INSERT INTO bears (name, age, gender, color, temperament, alive) VALUES ('Mr.Chocolate', 3, 'Male', 'PINK', 'GOOD', 'TRUE');
INSERT INTO bears (name, age, gender, color, temperament, alive) VALUES ('Rowdy', 6, 'Male', 'BROWN', 'SAD', 'TRUE');
INSERT INTO bears (name, age, gender, color, temperament, alive) VALUES ('Tabitha', 7, 'Female', 'ORANGE', 'ANGRY', 'TRUE');
INSERT INTO bears (name, age, gender, color, temperament, alive) VALUES ('Sergeant Brown', 11, 'Male', 'BLUE', 'HAPPY', 'TRUE');
INSERT INTO bears (name, age, gender, color, temperament, alive) VALUES ('Melissa', 2, 'Female', 'PURPLE', 'CRYING', 'TRUE');
INSERT INTO bears (name, age, gender, color, temperament, alive) VALUES ('Grinch', 8, 'Male', 'GREEN', 'JOY', 'TRUE');
INSERT INTO bears (name, age, gender, color, temperament, alive) VALUES ('Wendy', 777, 'Female', 'GOLD', 'EVIL', 'FALSE');
