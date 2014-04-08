<?php namespace spec\Bench;

use PhpSpec\ObjectBehavior;
use Prophecy\Argument;

class BenchSpec extends ObjectBehavior {

    function it_is_initializable()
    {
        $this->shouldHaveType('Bench\Bench');
    }

    function it_allows_you_to_start_a_new_benchmark()
    {
        $this->start();
    }

    function it_allows_you_to_finish_a_benchmark()
    {
        $this->end();
    }

    function it_returns_correct_elapsed_time()
    {
        $this->start();

        $this->end();

        $this->getTime()->shouldBeAFloat();
    }

    function it_allows_you_to_get_the_memory_usage()
    {
        $this->start();

        $this->end();

        $this->getMemoryUsage()->shouldBeAnInteger();
    }

    function it_allows_you_to_get_the_memory_peak_usage()
    {
        $this->getMemoryPeak()->shouldBeAnInteger();
    }

    /**
     * Get custom matchers
     *
     * @return array
     */
    public function getMatchers()
    {
        return [
            'beAFloat' => function($subject)
            {
                return \is_float($subject);
            },

            'beAnInteger' => function($subject)
            {
                return \is_int($subject);
            }
        ];
    }

}

