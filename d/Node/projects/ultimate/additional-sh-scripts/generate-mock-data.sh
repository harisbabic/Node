#!/bin/bash
# generate-mock-data.sh

project_dir="$1"
data_type="$2"
count="${3:-10}"

mkdir -p "$project_dir/src/mockData"

generate_user() {
  echo "{
    \"id\": $1,
    \"name\": \"User $1\",
    \"email\": \"user$1@example.com\",
    \"age\": $((RANDOM % 50 + 18))
  }"
}

generate_product() {
  echo "{
    \"id\": $1,
    \"name\": \"Product $1\",
    \"price\": $((RANDOM % 10000 + 1000)).$((RANDOM % 100)),
    \"category\": \"Category $((RANDOM % 5 + 1))\"
  }"
}

generate_data() {
  echo "["
  for i in $(seq 1 $count); do
    $1 $i
    if [ $i -lt $count ]; then
      echo ","
    fi
  done
  echo "]"
}

case "$data_type" in
  users)
    generate_data generate_user > "$project_dir/src/mockData/users.json"
    ;;
  products)
    generate_data generate_product > "$project_dir/src/mockData/products.json"
    ;;
  *)
    echo "Invalid data type. Choose 'users' or 'products'."
    exit 1
    ;;
esac

echo "Mock $data_type data generated in $project_dir/src/mockData"
