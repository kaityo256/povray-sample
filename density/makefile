POVRAY=povray

all: df3.png

df3.png: df3.pov
	povray $<

df3.pov: test.df3

test.df3: df3.rb
	ruby $<

clean:
	rm -f df3.png test.df3
