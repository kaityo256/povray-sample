POVRAY=povray

all: iso.png

iso.png: iso.df3
	$(POVRAY) iso.pov

iso.df3: iso.rb
	ruby iso.rb

clean:
	rm -f iso.df3 iso.png
