'''
Converting the data.csv file into  anarray of hashes where each hash represents a row of data with keys as column names
and values as row values
'''
data = 'data.csv'

# split up each line while also removing the \n at end of them
line1 = File.readlines(data)[0].chomp.split(',')
line2 = File.readlines(data)[1].chomp.split(',')
line3 = File.readlines(data)[2].chomp.split(',')

data_hash1 = {
  line1[0] => line2[0],  # using indexes of each line to make the hash for Alice
  line1[1] => line2[1],
  line1[2] => line2[2]
}

data_hash2 = {
  line1[0] => line3[0],  # doing the same for Bob
  line1[1] => line3[1],
  line1[2] => line3[2]
}

# putting the hashes as elements in an array
data_array = [data_hash1, data_hash2]
puts data_array
