atom_feed do |feed|
  feed.title "(in)Krediblogs"
  feed.updated @blogs.first.updated_at

  @blogs.each do |blog|
    feed.entry(blog) do |entry|
      entry.title blog.title
      entry.content blog.body, :type => 'html'

      entry.author do |author|
        author.name '(in)Kredible Komrade'
      end
    end
  end
end
