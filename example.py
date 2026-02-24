# Fira Code Demo - Python
def main():
    # Common operators 
    a = 10
    b = 20
    if a < b and a != 0:
        print("a is less than b")
    
    # Comparisons
    x = (a >= 5) and (b <= 30)
    
    # Walrus operator
    if (value := get_data()) is not None:
        process(value)

    # Lambda with arrow
    scale = lambda z: z * 2

    # Bitwise operations
    flag = a & b | (a ^ b)
    shift = a << 2 >> 1

    return flag, shift

def get_data():
    return "Simulated data"

def process(data):
    print(f"Processing: {data}")

if __name__ == "__main__":
    main()