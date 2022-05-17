class meal {
  String Mname;
  double Mcalo;
  double Mcarb;
  double Mfat;
  double Mprot;
  String Mingredients;
  String Mmethod;
  String Mimag;
  meal(this.Mname, this.Mcalo, this.Mcarb, this.Mfat, this.Mprot,
      this.Mingredients, this.Mmethod, this.Mimag) {}
}

final mealData = [
  meal(
      "Baked eggs with spinach,\n tomatoes, ricotta & basil",
      271,
      11,
      17,
      17,
      "2 tbsp olive oil\n\n" +
          "1 onion, finely chopped\n\n" +
          "1 garlic clove, crushed\n\n" +
          "pinch of chilli flakes\n\n" +
          "3 x 400g cans finely chopped tomatoes (or blitz regular canned chopped tomatoes using a food processor or hand blender)\n\n" +
          "3 tbsp sundried tomato pesto (ensure vegetarian, if needed)\n\n" +
          "200g spinach, roughly chopped\n\n" +
          "8 eggs\n\n" +
          "100g ricotta\n\n" +
          "40g parmesan or vegetarian alternative, finely grated\n\n"
              "handful of basil leaves\n\n" +
          "crusty bread or focaccia, to serve\n\n",
      "1) Heat the oil in a large, shallow, flameproof casserole or frying pan over a low-medium heat and fry the onion with a pinch of salt for 10 mins until soft and translucent. Add the garlic and chilli flakes, and fry for 1 min more. Tip in the tomatoes, 1 tsp sugar and pesto. Season and simmer, uncovered, for 10 mins, stirring often. Tip in the spinach and cook for another 5 mins until wilted.\n\n" +
          "2) Heat the grill to high. Make eight gaps in the sauce with the back of a spoon and crack an egg into each. Dot over the ricotta and scatter with the parmesan. Cover and cook for 5 mins, then slide under the hot grill for a few minutes until the egg whites are set and the yolks runny. Scatter with the basil and serve with crusty bread for dunking.\n\n",
      "Baked-Eggs-With-Spinach.jpg"),
  meal(
      "Banana overnight oats",
      557,
      65,
      23,
      20,
      "2 bananas, peeled\n\n" +
          "100g porridge oats\n\n" +
          "¼ tsp ground cinnamon, plus a pinch to serve\n\n" +
          "1 tbsp maple syrup\n\n" +
          "300ml milk of your choice, plus a splash\n\n" +
          "2 tbsp peanut or almond butter, plus extra to serve\n\n" +
          "2 tbsp flaked or chopped almonds\n\n" +
          "2-4 tbsp natural yogurt, to serve (optional)\n\n",
      "1) Mash 1 banana in a bowl with a fork until smooth. Stir in the oats, cinnamon, maple syrup, milk and peanut butter. Mix well, then cover and chill overnight.\n\n" +
          "2) The next morning, stir the porridge, adding another splash of milk if the mixture is quite stiff. Divide between two bowls. Slice the remaining banana and scatter this over the porridge, drizzle with more nut butter and sprinkle over the almonds. Top with spoonfuls of yogurt, if using, and sprinkle with a pinch more cinnamon before serving.\n\n",
      "Banana-Overnight-Oats.jpg"),
  meal(
      "Beef chow mein",
      407,
      41,
      11,
      32,
      "2 wholemeal noodle nests (85g)\n\n" +
          "2 tsp rapeseed or sesame oil\n\n" +
          "200g lean fillet steak, fat removed and cut into strips\n\n" +
          "1 small red onion (100g), finely chopped\n\n" +
          "15g piece of ginger, peeled and finely chopped\n\n" +
          "160g chestnut mushrooms, thickly sliced\n\n" +
          "2 garlic cloves, finely chopped\n\n" +
          "160g ready-to-eat beansprouts\n\n" +
          "1½ tsp tamari\n\n" +
          "1 tbsp brown rice vinegar\n\n" +
          "4 spring onions (65g), cut into diagonal lengths\n\n",
      "1) Cook the noodles following pack instructions. Meanwhile, heat half the oil in a wok and stir-fry the beef over a high heat for 30 seconds until browned. Tip onto a plate, set aside, then add the remaining oil to the wok. Stir-fry the onion and ginger until softened. Add a drop of water to prevent burning, if needed and cook covered for 2-3 mins.\n\n" +
          "2) Stir in the mushrooms and garlic, and fry until they start to soften (around 3 mins), then add the beansprouts and cook for a minute or two more until piping hot.\n\n" +
          "3) Mix the tamari and vinegar together in a small bowl with 2 tbsp water. Add the drained noodles to the wok, toss well, then add the tamari mixture, spring onions and the beef. Stir-fry for a few minutes until heated through. Season with plenty of black pepper and serve.\n\n",
      "Beef-chow-mein.jpg"),
  meal(
      "Blueberry smoothie recipe",
      120,
      21,
      3,
      3,
      "175g blueberries\n\n" +
          "1 small banana, sliced\n\n" +
          "1 tbsp natural or Greek yogurt\n\n" +
          "100ml apple juice, chilled\n\n" +
          "3-4 mint leaves (optional), plus extra to garnish\n\n",
      "1) Put the blueberries, banana, yogurt, apple juice and mint, if using, in a blender and blitz until smooth. Add a splash of water if it seems too thick.\n\n" +
          "2) Pour the smoothie into a tall glass with a glass straw to serve. Garnish with a sprig of mint, if you like.\n\n",
      "Blueberry-smoothie.jpg"),
  meal(
      "Cheesy skillet hash brown \n& eggs",
      661,
      54,
      35,
      30,
      "1 large Maris Piper potato (about 250g), coarsely grated\n\n" +
          "1 egg, beaten\n\n" +
          "1 tbsp plain flour\n\n" +
          "20g cheddar, grated\n\n" +
          "3 spring onions, finely sliced\n\n" +
          "1 tbsp vegetable oil\n\n" +
          "1 egg\n\n" +
          "20g cheddar, grated\n\n" +
          "1⁄4 tsp chilli flakes (optional)\n\n",
      "1) Heat the oven to 200C/180C fan/gas 6. Tip the grated potato into a clean tea towel and wring out any excess water. Transfer to a bowl and mix in the beaten egg, flour, cheese and half the spring onions. Season with plenty of salt and a grinding of black pepper.\n\n" +
          "2) Brush a 20cm ovenproof skillet or frying pan with the oil and set over a medium heat. Once hot, press the hash brown mixture into the pan using the back of a spoon, making a well in the middle. Fry for 6-8 mins until golden.\n\n" +
          "3) Transfer the hash brown to the oven and bake for 10 mins. For the toppings, break the egg into the gap and sprinkle the cheese over the hash brown. Bake for 8-10 mins until the potato is crisp and the egg white is set and the yolk runny (or cooked the way you prefer). Sprinkle over the remaining spring onions and the chilli flakes, if using.\n\n",
      "Cheesy-skillet-hash-brown.jpg"),
  meal(
      "Coconut & corn curry",
      473,
      57,
      14,
      24,
      "150g red lentils\n\n" +
          "1 tbsp vegetable oil\n\n" +
          "1 onion, finely sliced\n\n" +
          "thumb-sized piece of ginger, finely sliced, plus extra to serve\n\n" +
          "1 tbsp turmeric\n\n" +
          "1 tbsp curry powder (check it’s gluten free if needed)\n\n" +
          "250g baby corn, halved diagonally\n\n" +
          "110g coconut yogurt, plus extra to serve\n\n" +
          "½ small bunch of coriander, leaves picked\n\n",
      "1) Put the lentils in a sieve and rinse until the water runs clean. Put the oil in a saucepan over a medium heat, tip in the onion and cook for 8 mins until softened. Add the ginger, turmeric and curry powder, and cook for another minute until fragrant. Stir in the lentils.\n\n" +
          "2) Tip in 400ml hot water and bring to the boil. Turn the heat down to medium and simmer for 15 mins until most of the water has been absorbed. Add the baby corn and 100ml water, cover and continue to simmer for 5-10 mins until the lentils are soft and the corn still has a little bite. Stir in the coconut yogurt to warm up, but don’t let it boil. Serve topped with more coconut yogurt, if you like, and coriander leaves sprinkled over.\n\n",
      "Coconut-and-corn-curry.jpg"),
  meal(
      "Freaky fruit platter",
      131,
      21,
      4,
      2,
      "70g white chocolate, plus extra for sticking on the eyeballs\n\n" +
          "3 small bananas, peeled and cut in half crosswise\n\n" +
          "eyeball cake decorations or black writing icing or edible ink pen\n\n" +
          "small piece of celery\n\n" +
          "6 small tangerines, peeled\n\n" +
          "1 red apple, cored and cut into 6 wedges\n\n" +
          "2 tbsp nut butter (we used almond)\n\n" +
          "25g yogurt-coated raisins\n\n" +
          "425g can lychees in juice, drained\n\n" +
          "150g blueberries\n\n" +
          "eyeball cake decorations or skewers\n\n" +
          "250g black and green grapes\n\n" +
          "short wooden skewers\n\n" +
          "black writing icing or edible ink pen, or eyeball cake decorations\n\n",
      "1) For the mummy bananas, melt the chocolate in a heatproof bowl set over a small pan of simmering water or in the microwave in 20-second bursts. Cool to room temperature. Put the bananas on a tray lined with baking parchment and drizzle over the chocolate in a criss-cross pattern to make ‘bandages’. Stick on the eyeball decorations or use black icing or an edible ink pen to draw the eyes on the bananas, then chill until set, about 30 mins (they will start to discolour after about 2 hrs).\n\n" +
          "2) For the tangerine pumpkins, cut tiny ‘stalks’ from the celery piece and push these into the tops of the tangerines where the segments come together.\n\n" +
          "3) For the apple fangs, cut a small wedge from the peel side of the apple wedges to make lips, then fill the ‘mouth’ with the nut butter. Push the raisins into the mouth to look like wonky teeth.\n\n" +
          "4) For the lychee eyeballs, stuff each lychee with a blueberry. Stick the eyeball decorations onto the blueberry using some of the melted white chocolate from step 1, or skewer the fruit together. If you like, drop these into a punch bowl.\n\n" +
          "5) For the grape snakes, thread alternating green and red grapes onto skewers, then stick on eyeball decorations with white chocolate as in step four.\n\n" +
          "6) Arrange the freaky fruits on a large serving platter. Fill gaps with any leftover blueberries and decorate with spooky Halloween figures and decorations, if you like.\n\n",
      "Freaky-fruit-platter.jpg"),
  meal(
      "Healthy tuna pasta",
      459,
      56,
      11,
      28,
      "150g wholemeal penne\n\n" +
          "1 large leek (200g), halved, and thinly sliced\n\n" +
          "1 tsp olive oil\n\n" +
          "160g cherry tomatoes, preferably on the vine\n\n" +
          "198g can sweetcorn, drained\n\n" +
          "75g ricotta\n\n" +
          "160g can tuna in spring water, drained\n\n" +
          "handful of basil, chopped, plus a few whole leaves to serve\n\n",
      "1) Boil the penne with the leek in a large pan of salted water following pack instructions, until al dente.\n\n" +
          "2) Meanwhile, heat the oil in a large pan over a medium-high heat and fry the tomatoes for a few minutes, until they start to burst and soften. Add the sweetcorn and cook for 2-3 mins to heat through. Drain the pasta and leeks, reserving a little of the pasta water. Tip the drained pasta and leeks into the pan with the tomatoes, then toss through the ricotta and tuna.\n\n" +
          "3) Season with plenty of black pepper. If you want to loosen the consistency, stir in some of the reserved pasta water along with the chopped basil. Serve scattered with the whole basil leaves.\n\n",
      "Healthy-tuna-pasta.jpg"),
];
