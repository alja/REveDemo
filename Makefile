ROOT_CFLAGS := `root-config --cflags`
ROOT_LDFLAGS := -L`root-config --libdir`

service: service.cc
	c++ ${ROOT_CFLAGS} `root-config --libs`  -lROOTEve -lROOTWebDisplay -lGeom -o $@ service.cc 
