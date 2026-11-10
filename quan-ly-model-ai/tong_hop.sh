# Script: tong_hop.sh
# Tac gia: NGUYEN_CONG_VINH
# Ngay tao: 10-11-2026
echo "Dang tao bao cao..."
echo "=== BAO CAO VAN HANH MODEL AI ===" > logs/tong_hop.txt
cat logs/inference.log | grep "WARNING" >> logs/tong_hop.txt
cat logs/inference.log | grep "ERROR" >> logs/tong_hop.txt
echo "Hoan thanh!"