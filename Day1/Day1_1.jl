function maxsum()
	maxi = 0
	summ = 0
	f = open( "Day1_input.txt" )
	lines = readlines(f)
	for l in lines
	    if isempty( filter(x -> !isspace(x), l) )
	    	if summ > maxi
	    		maxi = summ
	    	end
	        summ = 0
	    else
	    	l = parse(Int64, l)
	        summ += l
	    end
	end
	close(f)
	return maxi
end

maxi = maxsum()
print(maxi)
