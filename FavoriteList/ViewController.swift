
import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {


    @IBOutlet weak var tableView: UITableView!


    let favoriteBooks: [FavoriteItem] = [
        FavoriteItem(title: "To Kill a Mockingbird", author: "Harper Lee", coverImage: UIImage(named: "mockingbird")!, genre: "Classic"),
        FavoriteItem(title: "1984", author: "George Orwell", coverImage: UIImage(named: "1984")!, genre: "Science Fiction"),
        FavoriteItem(title: "Pride and Prejudice", author: "Jane Austen", coverImage: UIImage(named: "pp")!, genre: "Classic"),
        FavoriteItem(title: "The Great Gatsby", author: "Jane Austen", coverImage: UIImage(named: "The Great Gatsby")!, genre: "Classic"),
        FavoriteItem(title: "Harry Potter and the Sorcerer’s Ston", author: "J.K. Rowling", coverImage: UIImage(named: "Harry Potter and the Sorcerer’s Ston")!, genre: "Fantasy"),
        FavoriteItem(title: "The Catcher in the Rye", author: "J.D. Salinger", coverImage: UIImage(named: "The Catcher in the Rye")!, genre: "Classic"),
        FavoriteItem(title: "The Lord of the Rings: The Fellowship of the Ring", author: "J.R.R. Tolkien", coverImage: UIImage(named: "The Lord of the Rings: The Fellowship of the Ring")!, genre: "Fantasy"),
        FavoriteItem(title: "The Hobbit", author: "J.R.R. Tolkien", coverImage: UIImage(named: "The Hobbit")!, genre: "Fantasy"),
        FavoriteItem(title: "The Da Vinci Code", author: "Dan Brown", coverImage: UIImage(named: "The Da Vinci Code")!, genre: "Classic"),
        FavoriteItem(title: "The Alchemist", author: "Paulo Coelho", coverImage: UIImage(named: "The Alchemist")!, genre: "Classic"),
        

    ]

    override func viewDidLoad() {
        super.viewDidLoad()

    
        tableView.delegate = self
        tableView.dataSource = self
    }

   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favoriteBooks.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FavoriteItemCell", for: indexPath) as! FavoriteItemCell
        let book = favoriteBooks[indexPath.row]
        
     
        cell.titleLabel.text = book.title
        cell.authorLabel.text = book.author
        cell.genreLabel.text = book.genre
        cell.coverImageView.image = book.coverImage
        
        
        return cell
    }
}

struct FavoriteItem {
    let title: String
    let author: String
    let coverImage: UIImage
    let genre:String
}

