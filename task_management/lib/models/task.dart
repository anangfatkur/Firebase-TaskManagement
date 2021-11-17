class Task {
  int? id;
  String? title;
  String? note;
  int? isCompleted;
  String? date;
  String? startTime;
  String? endTime;
  int? color;
  int? remind;
  String? repeat;

  Task({
    this.id,
    this.title,
    this.note,
    this.isCompleted,
    this.date,
    this.startTime,
    this.endTime,
    this.color,
    this.remind,
    this.repeat,
  });

  Task.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    note = json['note'];
    isCompleted = json['isCompleted'];
    date = json['date'];
    startTime = json['startTime'];
    endTime = json['endTime'];
    color = json['color'];
    remind = json['remind'];
    repeat = json['repeat'];
  }

  Map<String, dynamic> toJson() {
    // ignore: prefer_collection_literals, unnecessary_new
    final Map<String, dynamic> data = new Map<String, dynamic>();
    // ignore: unnecessary_this
    data['id'] = this.id;
    // ignore: unnecessary_this
    data['title'] = this.title;
    // ignore: unnecessary_this
    data['date'] = this.date;
    // ignore: unnecessary_this
    data['note'] = this.note;
    // ignore: unnecessary_this
    data['isCompleted'] = this.isCompleted;
    // ignore: unnecessary_this
    data['startTime'] = this.startTime;
    // ignore: unnecessary_this
    data['endTime'] = this.endTime;
    // ignore: unnecessary_this
    data['color'] = this.color;
    // ignore: unnecessary_this
    data['remind'] = this.remind;
    // ignore: unnecessary_this
    data['repeat'] = this.repeat;
    return data;
  }
}
