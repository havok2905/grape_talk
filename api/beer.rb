module BeerAPI
  class Beer
    class << self
      attr_accessor :cellar      

      def styles
        @cellar.map{ |beer| beer[:style] }.uniq
      end

      def names
        @cellar.map{ |beer| beer[:name] }.uniq
      end

      def beers
	@cellar
      end

      def beer(id)
	@cellar[id]
      end
    end

    @cellar = [
       { name: 'Bourbon County', style: 'Imperial Stout' },
       { name: 'World Wide Stout', style: 'Imperial Stout' },
       { name: 'Jai Alai', style: 'IPA' },
       { name: 'Golden Monkey', style: 'Trippel' }
      ]

  end
end
