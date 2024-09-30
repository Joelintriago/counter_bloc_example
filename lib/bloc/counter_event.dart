abstract class CounterEvent{}

class IncrementEvent extends CounterEvent{}

class DecrementEvent extends CounterEvent{}

class MultiplicarEvent extends CounterEvent{
  MultiplicarEvent( this.multiplo);
  final int multiplo;
}