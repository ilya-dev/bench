<?php namespace spec\Bench;

use PhpSpec\ObjectBehavior;
use Prophecy\Argument;

class BenchSpec extends ObjectBehavior {

    function it_is_initializable()
    {
        $this->shouldHaveType('Bench\Bench');
    }



}

