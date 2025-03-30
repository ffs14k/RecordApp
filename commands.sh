execute_script() {
    case $1 in
        1) chmod +x ./scripts/generator.sh && ./scripts/generator.sh;;
        2) chmod +x ./scripts/clearbuild_debug.sh && ./scripts/clearbuild_debug.sh;;
        *) echo "Invalid input. Please enter a number between 1 and 2." ;;
    esac
}

printCommands() {
    echo "1) generator.sh;"
    echo "2) clearbuild_debug.sh"
}

main() {
    printCommands
    read -r input
    execute_script "$input"
}

main "$@"