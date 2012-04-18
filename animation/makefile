.SUFFIXES: .cd .pov .png

TARGET=collision.gif
CD=$(shell ls *.cd)
POV=$(CD:.cd=.pov)
PNG=$(CD:.cd=.png)
POVRAY=/usr/local/bin/povray

all: $(PNG)
	convert -delay 3 *.png collision.gif

.cd.pov:
	ruby ./pov.rb $< > $@

.pov.png:
	$(POVRAY) $< 

clean:
	rm -f $(POV) $(PNG) $(TARGET)
