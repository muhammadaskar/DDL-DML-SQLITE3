# Lesson plan
Treat this as a base guideline on conducting class. Instructors can customize the delivery of the contents and engagement with the students based on your preferred styles.

## Classroom Structure

We will structure our classroom as follows:
- 17.00 - 17.10: Opening
- 17.10 - 18.10: Homework Showcase
- 18.10 - 18.30: Break
- 18.30 - 19.30: Discussion
- 19.30 - 20.00: Closing

## Homework Showcase

In this iteration of Generasi Gigih, we are experimenting with a method called "flipped learning". In this method, we emphasize learning based on the experience of our participants. Therefore, we explicitly tell them that all of our modules and their corresponding homework should be conducted by participants before the classroom session is started.

During our classroom session, the very first thing we do is a homework showcase. As classroom instructors, we should try our best to get as many people as possible to showcase their homework. As a heuristic, for each participant, allocate around 5-6 minutes for one showcase so that we cover 10-12 people in a one hour showcase session.

Things particpants should do during the showcase:
- Run their solution
- Quick walkthrough of the code
- Ask questions, if any

Things class instructors should do during the showcase:
- Ask decisions around the solution
- Answer questions, if any

## Discussion

After homework showcase, we continue with an hour discussion session. In this session, we encourage participants to ask questions based on their own progress with the homework. We only re-read the module materials if we deem necessary. Otherwise, we should proceed with the discussion.

If participants don't appear to be much invovled in the discussion, as instructors, we can ask some questions to ignite a discussion.

The following is some questions that might help to gauge participants' understanding of this module:
  - What is the difference between DDL & DML?
  - Why do we need to assign proper data types to each DB field?
  - Given some query sample, explain what it does. E.g:
    ```sql
     SELECT c.id, c.name, GROUP_CONCAT(i.name), MAX(i.price) 
      FROM categories c 
      LEFT JOIN item_categories ic ON ic.category_id = c.id 
      LEFT JOIN items i ON i.id = ic.item_id 
      GROUP BY c.id;
    ```

Encourage participants to ask questions. If no question is raised, then your turn to ask them to make sure they understand the materials.

You can also share your own anecdotal experience on related topic to give more context to the students

We can briefly re-explain the materials from intstruction, but more importantly ask if they still have any confusion in any of these materials. Let's try our best to clear any doubts and confusions in the closing section.

## Optional topics
  - What are DB contstraints?
  - When do we need to use DB constraints?
  - DB normalization
