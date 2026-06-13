#!/system/bin/sh
#TheStanaTools-Debloater
#Reads packages from ../config/bloatware.list and disables them



LIST_FILE="../config/bloatware.list"
if [ ! -f "$LIST_FILE" ]; then
    echo "Error: config/bloatware.list not found."
    exit 1
fi
echo "Starting debloat process..."
while IFS= read -r package; do
    if [ -n "$package" ]; then
        echo "Disabling $package..."
        pm disable-user --user 0 "$package"
    fi
done < "$LIST_FILE"
echo "Debloat process finished."