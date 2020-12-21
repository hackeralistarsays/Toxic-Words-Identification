{
 "metadata": {
  "language_info": {
   "codemirror_mode": {
    "name": "ipython",
    "version": 3
   },
   "file_extension": ".py",
   "mimetype": "text/x-python",
   "name": "python",
   "nbconvert_exporter": "python",
   "pygments_lexer": "ipython3",
   "version": 3
  },
  "orig_nbformat": 2
 },
 "nbformat": 4,
 "nbformat_minor": 2,
 "cells": [
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": []
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "import sqlite3\n",
    "\n",
    "con = sqlite3.connect('db.sqlite3')\n",
    "\n",
    "def sql_fetch(con):\n",
    "\n",
    "    cursorObj = con.cursor()\n",
    "\n",
    "    cursorObj.execute('SELECT * FROM comp_493_messages')\n",
    "\n",
    "    rows = cursorObj.fetchall()\n",
    "\n",
    "    for row in rows:\n",
    "\n",
    "        print(row)\n",
    "\n",
    "sql_fetch(con)\n",
    "\n",
    "import re\n",
    "\n",
    "list = [\"guru99 get\", \"guru99 give\", \"guru Selenium\"]\n",
    "for element in list:\n",
    "    z = re.match(\"(g\\w+)\\W(g\\w+)\", element)\n",
    "if z:\n",
    "    print((z.groups()))\n",
    "    \n",
    "patterns = ['software testing', 'guru99']\n",
    "text = 'software testing is fun?'\n",
    "for pattern in patterns:\n",
    "    print('Looking for \"%s\" in \"%s\" ->' % (pattern, text), end=' ')\n",
    "    if re.search(pattern, text):\n",
    "        print('found a match!')\n",
    "else:\n",
    "    print('no match')\n",
    "abc = 'guru99@google.com, careerguru99@hotmail.com, users@yahoomail.com'\n",
    "emails = re.findall(r'[\\w\\.-]+@[\\w\\.-]+', abc)\n",
    "for email in emails:\n",
    "    print(email)"
   ]
  }
 ]
}