if gliding=1{
	if round(x)!=200{
		gliding=1;
		glide_lin(100,100,200,200,10);
	}else{
		gliding=0;
	}
} else{
	if round(x)!=100{
		gliding=0;
		glide_lin(200,200,100,100,60);
	}else{
		gliding=1;
	}
}