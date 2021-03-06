git clone http://github.com/seladb/PcapPlusPlus.git
sudo docker pull seladb/ubuntu1604
sudo docker run -itd --name ubuntu1604 -v $(pwd)/PcapPlusPlus:/PcapPlusPlus seladb/ubuntu1604 bash
sudo docker exec -i ubuntu1604 bash -c "cd PcapPlusPlus && ./configure-linux.sh --default"
sudo docker exec -i ubuntu1604 bash -c "cd PcapPlusPlus && make all"
sudo docker exec -i ubuntu1604 bash -c "cd PcapPlusPlus/Tests/Packet++Test && Bin/Packet++Test"
sudo docker exec -i ubuntu1604 bash -c "cd PcapPlusPlus/Tests/Pcap++Test && Bin/Pcap++Test -n"
sudo docker exec -i ubuntu1604 bash -c "cd PcapPlusPlus && make install"
sudo docker exec -i ubuntu1604 bash -c "cd PcapPlusPlus/Examples/Tutorials/Tutorial-HelloWorld && make -f Makefile.non_windows all && ./Tutorial-HelloWorld"
