#!/usr/bin/perl

                      use strict;
                      use warnings;

		      my $count = 1;

                      open my $file_in, '<', 'app-artifact-input.txt' or die \$!;
while(<$file_in>){
        my $count=$count++;
        my @columns = split / /, $_;

        my $data1 = "$columns[0]";
        chomp $data1;
        my $data2 = "$columns[1]";
        chomp $data2;

print "\n\nBootstrap for server $count : $data1 \n";
my $cmd1=system ("echo $data1 and $data2");
}
close $file_in;
