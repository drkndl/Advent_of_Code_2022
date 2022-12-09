function maxsum_three()
	maxi = 0
	summ = 0
	summ_vector = Vector{Int64}()

	f = open( "Day1_input.txt" )
	lines = readlines(f)
	for l in lines
	    if isempty( filter(x -> !isspace(x), l) )
	    	push!(summ_vector, summ)
	        summ = 0
	    else
	    	l = parse(Int64, l)
	        summ += l
	    end
	end
	close(f)

	sort!(summ_vector, rev=true)
	threesome = summ_vector[1] + summ_vector[2] + summ_vector[3]
	return threesome
end

threesome = maxsum_three()
print(threesome)