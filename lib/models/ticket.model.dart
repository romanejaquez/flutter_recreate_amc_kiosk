import 'package:amc_flutter_app/helpers/ticket.type.dart';

class TicketModel {

  TicketType type;
  int amount;
  double price;

  TicketModel({ this.type, this.amount, this.price });
}