def open_file() -> list:
    ''' Open the books dataset csv file '''

    with open('./books_dataset.csv', 'r') as f:
        lines = f.readlines()
        return [ line.split(',') for line in lines ]

def insert_file(value: list) -> None:
    """Insert a new book into the main file
    
    Returns
    -------
        None
    """
    
    with open('./books_dataset.csv', 'a') as f:
        try:
            # 0, 1, 4
            files = [ [ f[0].upper(), f[1].upper(), f[4].upper() ] for f in open_file() ]

            check_value = [ value[0].upper(), value[1].upper(), value[4].upper() ]

            if check_value in files:
                print("Livro já consta no dataset!")
                insert_item() 

            f.write('\n')
            line = ','.join(value)
            f.write(line)


            print("Livro insertido com sucesso!")
        except:
            print("Livro não pode ser inserido no dataset!")
            insert_item()

def insert_item() -> None:
    """Insert a new book into the dataset by checking if the input file is already in the main file
    
    Returns 
    -------
        None
    """
    
    book = input('Digite o nome do livro: ')
    autor = input('Digite o nome do autor: ')
    ano = input('Digite o ano do livro: ') 
    isbn = input('Digite o valor ISBN: ')
    edicao = input('Digite o tipo de edição: ')
    classificacao = input('Digite a classificação: ')
    goat = input('Digite SIM ou NÃO para GOAT: ')
    lido = input('Digite SIM ou Não para Lido: ')
    
    data = [ book, autor, ano, isbn, edicao, classificacao, goat, lido ]

    insert_file(data)
