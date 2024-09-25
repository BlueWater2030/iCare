import 'package:project/homepage/widgets/womensdoctors_page/constants/constants.dart';
import 'package:project/homepage/widgets/womensdoctors_page/ifcondition_text.dart';
import 'package:flutter/material.dart';

class WBabyBodyChangeContainer extends StatelessWidget {
  final String image;
  final EdgeInsets margin;
  final String label;
  final String week;
  const WBabyBodyChangeContainer(
      {Key? key,
      required this.week,
      required this.image,
      required this.label,
      required this.margin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget text1(String week) {
      if (week == '1' || week == '2') {
        return const IfConditionText(
            label: 'Baby Conceived', label2: '''It's ovulation time.
If sperm and egg meet,
you're on your way to pregnancy.''');
      } else if (week == '3') {
        return const IfConditionText(
            label: 'Implantation occurs', label2: '''Your baby is a tiny ball
of several hundred cells that are rapidly multiplying
and burrowing into the lining of your uterus.
The cells that 
become the placenta are producing hCG,
the pregnancy hormone.
It tells your ovaries to stop releasing eggs
and keep producing progesterone.
Once there's enough hCG in your urine,
you'll get a positive pregnancy test result.''');
      } else if (week == '4') {
        return const IfConditionText(
          label: 'Positive Pregnancy Test',
          label2: '''Your baby is an embryo made up of two layers,
the hypoblast and the epiblast.
The primative placenta is developing
and preparing to provide nutrients and oxygen
to your growing baby.
The amniotic sac is developing and will
surround and protect your baby
while it continues to grow.''',
        );
      } else if (week == '5') {
        return const IfConditionText(
            label: '', label2: '''Your embryo is now made up of three layers,
the ectoderm, the mesoderm and the
endoderm which will later form all the
organs and tissues. You might start to
feel the first twinges of pregnancy such as tender breasts,
frequent urination, or morning sickness''');
      } else if (week == '6') {
        return const Align(
            alignment: Alignment.center,
            child: IfConditionText(
                label: 'Heartbeat detectable by ultrasound',
                label2:
                    '''Your baby's heart is beating about 160 times a minute and the nose, mouth and ears are taking shape.
Lungs and digestive system are forming organs.'''));
      } else if (week == '7') {
        return const IfConditionText(
            label: '', label2: '''Your baby is forming hands and feet.
Key organs like the stomach,
liver and esophagus are beginning to form.
Your uterus has doubled in size.
The umbilical cord is transferring blood and waste between baby and mother.''');
      } else if (week == '8') {
        return const IfConditionText(
            label: '', label2: '''The respiratory system is forming now.
Breathing tubes extend from the throat
to the branches of the developing lungs.''');
      } else if (week == '9') {
        return const IfConditionText(
            label: '', label2: '''Your baby is nearly an inch long now.
If you watch closely, you may see your baby move if you have an ultrasound done''');
      } else if (week == '10') {
        return const IfConditionText(
            label: 'Congrats on your first ten weeks',
            label2: '''Your baby's organs are growing and beginning to mature.
The baby's head comprises half the length of the body.''');
      } else if (week == '11') {
        return const IfConditionText(
            label: '',
            label2:
                '''Fingers and toes have separated and the bones are beginning to harden.
External genitalia has almost completely formed.''');
      } else if (week == '12') {
        return const IfConditionText(
            label: '',
            label2:
                '''The kidneys can now secrete urine and the nervous system is maturing.
You baby may be curling all 10 toes,
practicing opening and closing fingers and sucking a thumb.
And mom should have gained from 2-5 lbs.''');
      } else if (week == '13') {
        return const IfConditionText(
            label: 'Miscarrige risk decreases',
            label2: '''Your baby now has unique fingerprints
and the kidney and urinary tract are completely functional,
that means she's peeing. And if you are having a girl,
her ovaries are already full of thousands of eggs.''');
      } else if (week == '14') {
        return const IfConditionText(
            label: '',
            label2:
                '''Your baby's facial muscles are getting a workout as he squints,
frowns, grimaces and practices his first smile for you.''');
      } else if (week == '15') {
        return const IfConditionText(
            label: '',
            label2:
                '''Your baby is looking more like a baby with legs growing longer than the arms and all her limbs moving.
The ears are properly positioned on the side of her head and the eyes are moving from the side of the head to the front of the face.
At your doctor's visit, he should offer you a quad screening test to check for Down's syndrome or other chromosomal abnormalities.''');
      } else if (week == '16') {
        return const IfConditionText(
            label: '',
            label2:
                '''Baby's heart is pumping about 25 quarts of blood each day.
His eyes are working and moving side to side even though the eyelids are still sealed.
 Mom will have a "pregnancy glow" due to increased blood supply.''');
      } else if (week == '17') {
        return const IfConditionText(
            label: '',
            label2:
                '''Baby's skeleton is changing from soft cartilage to bone and her heart is now regulated by her brain.
She's practicing her sucking and swallowing skills in preparation for that first suckle at your breast or the bottle.
Mom's breasts may have increased a full bra size.''');
      } else if (week == '18') {
        return const IfConditionText(
            label: 'Gender reveal time',
            label2:
                '''If you're having a girl, her uterus and fallopian tubes are formed and in place.
If you're having a boy, his genitals are noticable now but he may hide them during an ultrasound.
Are you feeling kickes and punches? Baby's hearing is also developing,
so you may want to start talking to your baby.''');
      } else if (week == '19') {
        return const IfConditionText(
            label: '',
            label2:
                '''Baby's brain is designating specialized areas for his 5 senses - vision, hearing, taste, smell and touch.
A waxy protective coating called the vernix caseosa is forming on his skin to prevent wrinkling.''');
      } else if (week == '20') {
        return const IfConditionText(
            label: '',
            label2:
                '''Your baby weighs about 10 ounces and is the size of a small banana.
Her uterus is fully formed this week and she may have tiny primitive eggs in tiny ovaries now.
His testicles are waiting for the scrotum to finish growing and will begin their descent soon.
Mom can expect to gain about 1/2 lb per week for the rest of her pregnancy.''');
      } else if (week == '21') {
        return const IfConditionText(
            label: '',
            label2:
                '''Feel all that moving and shaking going on! Baby's arms and legs are in proportion now and movements are much more coordinated.
Bone marrow is now helping the liver and spleen produce blood cells.
The intestines are starting to produce meconium, the thick tarry looking stool first seen in baby's diaper.''');
      } else if (week == '22') {
        return const IfConditionText(
            label: '', label2: '''Senses are growing stronger.
Now she can hear your heart beat,your breathing and digestion.
Sense of sight is becoming more fine-tuned and he can preceive light and dark.
Hormones are now developing which will the organs the commands they need to operate.''');
      } else if (week == '23') {
        return const IfConditionText(
            label: 'Premature baby may survive',
            label2: '''Baby's organs and bones are visible through his skin,
which has a red hue because of the developing veins and arteries beneath.
He'll become less transparent as his fat deposits fill in.
Baby is also developing surfactant which will help the lungs inflate if baby is born prematurely''');
      } else if (week == '24') {
        return const IfConditionText(
            label: '',
            label2:
                '''Baby's face is almost fully formed complete with eyelashes, eyebrows and hair.
Right now her hair is white because there's no pigment yet.
Between now and 28 weeks, the doctor should send mom for a glucose screening test for gestational diabetes.''');
      } else if (week == '25') {
        return const IfConditionText(
            label: '',
            label2: '''Baby is gaining more fat and looking more like a newborn.
Hair color and texture is in place.
His lungs are maturing and preparing for that first breath.
You might feel the baby having hiccups.''');
      } else if (week == '26') {
        return const IfConditionText(
            label: '',
            label2:
                '''Brain-wave activity is on high That means baby can hear noises and respond to them with an increase pulse rate or movement.
Eyes are beginning to open but they don't have much pigmentation.
That will develop over the next couple months and may even continue to change until she's about 6-months-old.''');
      } else if (week == '27') {
        return const IfConditionText(
            label: 'Start talking to your baby',
            label2: '''Baby may recognize both your and your partner's voices.
This is the time to read and even sing to your baby.
She now has taste buds so when you eat spicy food, your baby will be able to taste the difference in the amniotic fluid.
Her mealtime comes about two hours after yours.
Feel some belly spasms? Those are likely hiccups from that spicy food.
It doesn't bother the baby as much as you.
Baby also has settled in to a regular sleep cycle, but it may be different from mom's.''');
      } else if (week == '28') {
        return const IfConditionText(
            label: '',
            label2:
                '''During the third trimester the brain triples in weight adding billions of new nerve cells.
Senses of hearing, smell and touch are developed and functional.
Your baby is having different sleep cycles, including rapid eye movement.
That means she's dreaming.''');
      } else if (week == '29') {
        return const IfConditionText(
            label: 'Baby can breathe',
            label2:
                '''Baby's bones are soaking up lots of calcium as they harden so be sure to consume good sources of calcium.
We recommend taking Nordic Naturals and Fairhaven Health supplements.''');
      } else if (week == '30') {
        return const IfConditionText(
            label: '',
            label2:
                '''Baby's brain is taking on characteristic grooves and indentations to allow for an increased amount of brain tissue.
Bone marrow has taken over the production of red blood cells.
This means she'll be better able to thrive on her own when she's born Baby is now weighing about 3 lbs and is 11 inches.''');
      } else if (week == '31') {
        return const IfConditionText(
            label: '',
            label2:
                '''Baby's brain is developing faster than ever and he's processing information, tracking light and perceiving signals from all five sense.
She's probably moving a lot, especially at night when you're trying to sleep.
Take comfort that all this activity means your baby is healthy.
 Mom may start feeling some Braxton Hicks contractions.''');
      } else if (week == '32') {
        return const IfConditionText(
            label: '',
            label2:
                '''Baby can focus on large objects not too far away; toenails and fingernails have grown in along with real hair.
He's practicing swallowing, breathing, kicking and sucking.
All key skills for thriving after birth.''');
      } else if (week == '33') {
        return const IfConditionText(
            label: 'Immune system is maturing',
            label2:
                '''The bones in your baby's skull are still pliable which makes it easier for her to fit through the birth canal.
Your uterine walls are becoming thinner allowing more light to penetrate your womb.
That helps baby differentiate between night and day.''');
      } else if (week == '34') {
        return const IfConditionText(
            label: '',
            label2:
                '''Baby's fat layers are filling her out and will help regulate body temperture when she's born.
If your baby is a boy, the testicles are making their way down from the abdomen to the scrotum.''');
      } else if (week == '35') {
        return const IfConditionText(
            label: '',
            label2:
                '''Kidneys are fully developed and her liver can process some waste products.
Most of her physical development is complete.
She'll spend the next few weeks gaining weight and adding baby fat.
Baby is settling lower into the pelvis preparing for delivery and this is called "lightening".''');
      } else if (week == '36') {
        return const IfConditionText(
            label: '',
            label2: '''Hopefully your baby is in a head-down position.
If not, your practitioner may suggest an external cephalic version to manipulate your baby into a head down position.
The vernix caseosa has now disappeared.''');
      } else if (week == '37') {
        return const IfConditionText(
            label: 'Baby is considered full term',
            label2:
                '''Baby is taking up most of the room in your womb so he's only kicking and poking you, no more somersaults.
Baby is sucking her thumb, blinking eyes and inhaling and exhaling amniotic fluid.''');
      } else if (week == '38') {
        return const IfConditionText(
            label: '',
            label2:
                '''Baby's eyes right now are blue, gray or brown but once they're exposed to light they may change color or a shade.
The lanugo, the fine downy hair that covered his body for warmth is falling off in preparation for delivery.
Her lungs have strenthened and her vocal cords have developed.
That means she's ready for her first cry.''');
      } else if (week == '39') {
        return const IfConditionText(
            label: '', label2: '''Baby is ready to make his debut.
He's adding more fat as his pinkish skin turns white or white-grayish.
He won't have his final pigment until shortly after birth.''');
      } else if (week == '40') {
        return const IfConditionText(
            label: '',
            label2:
                '''This is the official end of your pregnancy but because due dates are just a calculation he might be "late."
No need to worry, your body knows the right time to go into labor, or your doctor may suggest you be induced.
At birth your baby's eye sight is a little blurry since central vision is still developing.
Just say hello and he'll recognize your voice.''');
      } else {
        return const Text(
          '''The normal pregnancy weeks has ended.
Be ready for your baby ✨''',
          style: babyBodyStyle,
        );
      }
    }

    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
            context: context,
            builder: (context) => Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Week ${week.toString()}',
                      style: const TextStyle(
                        fontSize: 22,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    text1(week),
                  ],
                ));
      },
      child: Container(
        margin: margin,
        width: 150,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7), color: Colors.grey[300]),
        child: Row(children: [
          Container(
              margin: const EdgeInsets.only(left: 7),
              height: 100,
              width: 50,
              child: Image.asset(
                image.toString(),
                height: 100,
                width: 50,
              )),
          const SizedBox(
            width: 15,
          ),
          Text(label)
        ]),
      ),
    );
  }
}
